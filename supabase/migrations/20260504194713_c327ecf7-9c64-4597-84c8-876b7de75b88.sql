ALTER TABLE public.contact_submissions
  ADD CONSTRAINT contact_submissions_name_length
    CHECK (char_length(btrim(name)) BETWEEN 1 AND 200),
  ADD CONSTRAINT contact_submissions_email_length
    CHECK (char_length(btrim(email)) BETWEEN 5 AND 255),
  ADD CONSTRAINT contact_submissions_email_format
    CHECK (email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$'),
  ADD CONSTRAINT contact_submissions_message_length
    CHECK (char_length(btrim(message)) BETWEEN 1 AND 5000);