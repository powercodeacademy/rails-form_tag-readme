
# Rails `form_tag` and ActionView Form Helpers

## From Manual Forms to Rails Helpers

In the previous lesson, you built forms by hand using plain HTML. You set up `<form>` tags, added input fields, and manually handled things like authenticity tokens for security. Now, let's see how Rails can automate much of that work for you using built-in helpers.

## Step 1: Building a Basic Form with `form_tag`

Rails provides helper methods in ActionView to make building forms easier and more secure. The primary helper for simple forms is `form_tag`, which generates a form element and handles many details for you, such as setting the HTTP method and including authenticity tokens for security.

Let's start with a minimal example:

```erb
<%= form_tag posts_path do %>
  <!-- Fields will go here -->
<% end %>
```

This creates a form that submits a POST request to `/posts`. Rails automatically includes a hidden authenticity token field for CSRF protection:

```html
<input type="hidden" name="authenticity_token" value="..." />
```

## Step 2: Adding Inputs with Field Helpers

You can add fields to your form using ActionView helpers. Let's build up the form step by step:

**Add a label and text field for the post title:**

```erb
<%= label_tag "post[title]", "Post title:" %><br>
<%= text_field_tag "post[title]" %>
```

**Add a label and textarea for the post description:**

```erb
<%= label_tag "post[description]", "Post description:" %><br>
<%= text_area_tag "post[description]" %>
```

**Add a submit button:**

```erb
<%= submit_tag "Submit Post" %>
```

**Put it all together:**

```erb
<%= form_tag posts_path do %>
  <%= label_tag "post[title]", "Post title:" %><br>
  <%= text_field_tag "post[title]" %><br>

  <%= label_tag "post[description]", "Post description:" %><br>
  <%= text_area_tag "post[description]" %><br>

  <%= submit_tag "Submit Post" %>
<% end %>
```

### What Does This Generate?

Notice that this is almost identical to the form you built by hand in the last lesson — except Rails handled the tokens and IDs for you automatically:

```html
<form action="/posts" accept-charset="UTF-8" method="post">
  <input name="utf8" type="hidden" value="✓" />
  <input type="hidden" name="authenticity_token" value="..." />
  <label for="post_title">Post title:</label><br />
  <input type="text" name="post[title]" id="post_title" /><br />
  <label for="post_description">Post description:</label><br />
  <textarea name="post[description]" id="post_description"></textarea><br />
  <input type="submit" name="commit" value="Submit Post" />
</form>
```

## Step 3: How Fields Map to `params`

When the form is submitted, Rails collects the input values into the `params` hash. For the above form, the controller will receive:

```ruby
params = {
  "post" => {
    "title" => "...",
    "description" => "..."
  }
}
```

This mapping is determined by the `name` attributes you set in your field helpers (e.g., `"post[title]"`).

## Step 4: Customizing the HTTP Method

By default, `form_tag` creates a form that submits via POST. If you need a different HTTP verb (for example, to search posts using GET), you can specify it:

```erb
<%= form_tag posts_search_path, method: :get do %>
  <%= label_tag "keyword", "Search posts:" %>
  <%= text_field_tag "keyword" %>
  <%= submit_tag "Search" %>
<% end %>
```

This will send the search keyword as `params["keyword"]` to your controller.

**Note:** HTML forms only support GET and POST methods directly. Rails can simulate other HTTP verbs (like PATCH, PUT, and DELETE) using hidden fields and JavaScript, which you'll see in later lessons with helpers like `form_with`.

## Step 5: Preview / Next Step

`form_tag` is flexible and lets you build forms for any purpose, but you must manually specify field names. In future lessons, you'll learn about `form_for` and `form_with`, which connect forms directly to models and automate even more of the process.

## Reflection & Exercises

1. **Build a form using `form_tag` that lets a user sign up with a name and email.**
2. **Build a search form for posts using `form_tag` and the GET method.**
3. **What routes and controller actions would need to exist for the above form to work?**

---

Using `form_tag` and ActionView helpers, you can quickly build secure, maintainable forms in Rails. These helpers handle much of the repetitive work and help keep your views clean and safe.
