.class public final Lcom/android/internal/inputmethod/InputConnectionProtoDumper;
.super Ljava/lang/Object;
.source "InputConnectionProtoDumper.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "InputConnectionProtoDumper"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildGetCursorCapsModeProto(II)[B
    .locals 5

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B
    .locals 10

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10b00000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    iget v7, p0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    const-wide v6, 0x10500000002L

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10500000003L

    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10500000004L

    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v6, v7, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    return-object v5
.end method

.method public static blacklist buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B
    .locals 5

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B
    .locals 10

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    invoke-virtual {v0, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10500000003L

    invoke-virtual {v0, v7, v8, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    nop

    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v9

    invoke-virtual {v0, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v5

    invoke-virtual {v0, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000004L

    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getOffset()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_0
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B
    .locals 5

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B
    .locals 5

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method
