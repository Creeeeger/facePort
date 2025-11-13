.class public Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;
.super Ljava/lang/Object;
.source "TextFromFloat.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Operation;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0

.field public static final blacklist PAD_AFTER_NONE:I = 0x1

.field public static final blacklist PAD_AFTER_SPACE:I = 0x0

.field public static final blacklist PAD_AFTER_ZERO:I = 0x3

.field public static final blacklist PAD_PRE_NONE:I = 0x4

.field public static final blacklist PAD_PRE_SPACE:I = 0x0

.field public static final blacklist PAD_PRE_ZERO:I = 0xc


# instance fields
.field blacklist mAfter:C

.field public blacklist mDigitsAfter:S

.field public blacklist mDigitsBefore:S

.field public blacklist mFlags:I

.field public blacklist mOutValue:F

.field blacklist mPre:C

.field public blacklist mTextId:I

.field public blacklist mValue:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IFSSI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    iput-short p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    and-int/lit8 v1, v1, 0x3

    const/16 v2, 0x30

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput-char v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    goto :goto_0

    :pswitch_2
    iput-char v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    goto :goto_0

    :pswitch_3
    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    nop

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iput-char v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    goto :goto_1

    :sswitch_1
    iput-char v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    goto :goto_1

    :sswitch_2
    iput-char v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    iget-char v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mPre:C

    iget-char v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mAfter:C

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringUtils;->floatToString(FIICC)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadText(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextFromFloat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mOutValue:F

    :cond_0
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 7

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mTextId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mValue:F

    iget-short v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsAfter:S

    iget-short v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mDigitsBefore:S

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->mFlags:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V

    return-void
.end method
