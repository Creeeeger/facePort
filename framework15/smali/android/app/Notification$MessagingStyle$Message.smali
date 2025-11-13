.class public final Landroid/app/Notification$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final greylist-max-o KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final greylist-max-o KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final greylist-max-o KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final greylist-max-o KEY_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "remote_input_history"

.field static final greylist-max-o KEY_SENDER:Ljava/lang/String; = "sender"

.field static final greylist-max-o KEY_SENDER_PERSON:Ljava/lang/String; = "sender_person"

.field public static final greylist-max-o KEY_TEXT:Ljava/lang/String; = "text"

.field static final greylist-max-o KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private greylist-max-o mDataMimeType:Ljava/lang/String;

.field private greylist-max-o mDataUri:Landroid/net/Uri;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mRemoteInputHistory:Z

.field private final greylist-max-o mSender:Landroid/app/Person;

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private final greylist-max-o mTimestamp:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    iput-wide p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    iput-object p4, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    iput-boolean p5, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 1

    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    return-void
.end method

.method public static greylist-max-o getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 14

    const-string/jumbo v0, "uri"

    const-string v1, "extras"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "time"

    const-string/jumbo v4, "text"

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v6, "sender_person"

    const-class v7, Landroid/app/Person;

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    if-nez v6, :cond_1

    const-string/jumbo v7, "sender"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v8, Landroid/app/Person$Builder;

    invoke-direct {v8}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v8, v7}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v8

    move-object v6, v8

    move-object v12, v6

    goto :goto_0

    :cond_1
    move-object v12, v6

    :goto_0
    new-instance v13, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string/jumbo v3, "remote_input_history"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move-object v6, v13

    move-object v10, v12

    invoke-direct/range {v6 .. v11}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    move-object v3, v13

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Landroid/net/Uri;

    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v3, v2, v0}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v3

    :cond_4
    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    const-string v1, "Notification"

    const-string v2, "could not unparcel extras from message notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :catch_1
    move-exception v0

    return-object v5
.end method

.method public static whitelist getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private blacklist stripNonStyleSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 14

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v1, v3

    instance-of v6, v5, Landroid/text/style/StyleSpan;

    if-nez v6, :cond_1

    instance-of v6, v5, Landroid/text/style/StrikethroughSpan;

    if-nez v6, :cond_1

    instance-of v6, v5, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    instance-of v6, v5, Landroid/text/style/TextAppearanceSpan;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Landroid/text/style/TextAppearanceSpan;

    new-instance v13, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object v7, v5

    :goto_2
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v2, v7, v6, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    return-object p1
.end method


# virtual methods
.method public blacklist ensureColorContrast(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/android/internal/util/ContrastColorUtil;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist ensureColorContrastOrStripStyling(I)V
    .locals 1

    invoke-static {}, Landroid/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle$Message;->stripNonStyleSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Notification$MessagingStyle$Message;->ensureColorContrast(I)V

    :goto_0
    return-void
.end method

.method public whitelist getDataMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDataUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getSender()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getSenderPerson()Landroid/app/Person;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o isRemoteInputHistory()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    return v0
.end method

.method public whitelist setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object p0
.end method

.method public greylist-max-o toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "text"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "sender"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "sender_person"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "type"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "uri"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const-string v1, "extras"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-boolean v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "remote_input_history"

    iget-boolean v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    return-object v0
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v0, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
