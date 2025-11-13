.class public final Landroid/widget/TextViewOnReceiveContentListener;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;
    }
.end annotation


# static fields
.field private static final blacklist AUTOFILL_NON_TEXT_REQUIRES_ON_RECEIVE_CONTENT_LISTENER:J = 0x9bd49a9L

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# instance fields
.field private blacklist mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist coerceToText(Landroid/content/ClipData;Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static blacklist containsOnlyText(Landroid/content/ClipData;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist containsUri(Landroid/content/ClipData;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist handleNonTextViaImeCommitContent(Landroid/content/ClipData;)Landroid/content/ClipData;
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/widget/TextViewOnReceiveContentListener;->containsUri(Landroid/content/ClipData;)Z

    move-result v2

    const/4 v3, 0x2

    const-string v4, "ReceiveContent"

    if-eqz v2, :cond_f

    invoke-static/range {p1 .. p1}, Landroid/widget/TextViewOnReceiveContentListener;->containsOnlyText(Landroid/content/ClipData;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p0

    goto/16 :goto_4

    :cond_0
    move-object/from16 v2, p0

    iget-object v5, v2, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-static {v5}, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->-$$Nest$fgetmInputConnection(Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputConnection;

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    const/4 v8, 0x3

    if-nez v7, :cond_3

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "onReceive: No usable EditorInfo/InputConnection"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    invoke-static {v5}, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->-$$Nest$fgetmEditorInfoContentMimeTypes(Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/widget/TextViewOnReceiveContentListener;->isClipMimeTypeSupported([Ljava/lang/String;Landroid/content/ClipDescription;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "onReceive: MIME type is not supported by the app\'s commitContent impl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0

    :cond_5
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive: Trying to insert via IME: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v12

    if-ge v11, v12, :cond_d

    invoke-virtual {v0, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_a

    const-string v14, "content"

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive: Calling commitContent: uri="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v14, Landroid/view/inputmethod/InputContentInfo;

    invoke-direct {v14, v13, v1}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;)V

    invoke-interface {v7, v14, v10, v6}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive: Call to commitContent returned false: uri="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    :goto_2
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onReceive: No content URI in item: uri="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :cond_c
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    return-object v6

    :cond_e
    new-instance v3, Landroid/content/ClipData;

    invoke-direct {v3, v1, v8}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Ljava/util/ArrayList;)V

    return-object v3

    :cond_f
    move-object/from16 v2, p0

    :goto_4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive: Clip doesn\'t contain any non-text URIs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-object v0
.end method

.method private static blacklist isClipMimeTypeSupported([Ljava/lang/String;Landroid/content/ClipDescription;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static blacklist isUsageOfImeCommitContentEnabled(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/32 v2, 0x9bd49a9

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onReceiveForAutofill(Landroid/widget/TextView;Landroid/view/ContentInfo;)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object v0

    invoke-static {p1}, Landroid/widget/TextViewOnReceiveContentListener;->isUsageOfImeCommitContentEnabled(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/TextViewOnReceiveContentListener;->handleNonTextViaImeCommitContent(Landroid/content/ClipData;)Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x2

    const-string v2, "ReceiveContent"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "onReceive: Handled via IME"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/ContentInfo;->getFlags()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/widget/TextViewOnReceiveContentListener;->coerceToText(Landroid/content/ClipData;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private static blacklist replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V
    .locals 5

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-interface {p0, v2, v3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method


# virtual methods
.method blacklist clearInputConnectionInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    return-void
.end method

.method public blacklist getFallbackMimeTypesForAutofill(Landroid/widget/TextView;)[Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/widget/TextViewOnReceiveContentListener;->isUsageOfImeCommitContentEnabled(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;->-$$Nest$fgetmEditorInfoContentMimeTypes(Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 11

    const/4 v0, 0x3

    const-string v1, "ReceiveContent"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/view/ContentInfo;->getSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-object p2

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, p2}, Landroid/widget/TextViewOnReceiveContentListener;->onReceiveForAutofill(Landroid/widget/TextView;Landroid/view/ContentInfo;)V

    return-object v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/ContentInfo;->getFlags()I

    move-result v3

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Editable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_7

    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_4

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    instance-of v9, v8, Landroid/text/Spanned;

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_3
    move-object v9, v8

    :goto_1
    move-object v8, v9

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_6

    if-nez v6, :cond_5

    invoke-static {v4, v8}, Landroid/widget/TextViewOnReceiveContentListener;->replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    const-string v10, "\n"

    invoke-interface {v4, v9, v10}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-interface {v4, v9, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method blacklist setInputConnectionInfo(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3

    invoke-static {p1}, Landroid/widget/TextViewOnReceiveContentListener;->isUsageOfImeCommitContentEnabled(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    return-void

    :cond_0
    iget-object v0, p3, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    invoke-direct {v2, p2, v0, v1}, Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;-><init>(Landroid/view/inputmethod/InputConnection;[Ljava/lang/String;Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo-IA;)V

    iput-object v2, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    goto :goto_1

    :cond_2
    :goto_0
    iput-object v1, p0, Landroid/widget/TextViewOnReceiveContentListener;->mInputConnectionInfo:Landroid/widget/TextViewOnReceiveContentListener$InputConnectionInfo;

    :goto_1
    return-void
.end method
