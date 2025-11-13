.class public final enum Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final messageForBiometrics:I

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v8, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v9, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v10, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const v3, 0x7f141585

    const v4, 0x7f14161a

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;Z)V

    sput-object v8, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v11, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const v3, 0x7f141628

    const v4, 0x7f141628

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const/4 v7, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;Z)V

    sput-object v11, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v12, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v13, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const v3, 0x7f141617

    const v4, 0x7f141617

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const/4 v7, 0x1

    move-object v0, v12

    move-object v5, v13

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;Z)V

    sput-object v12, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v10, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const v3, 0x7f141616

    const v4, 0x7f141616

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;Z)V

    sput-object v10, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v13, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v14, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const v3, 0x7f141612

    const v4, 0x7f141612

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const/4 v7, 0x1

    move-object v0, v13

    move-object v5, v9

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;Z)V

    sput-object v13, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v15, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const v3, 0x7f141614

    const v4, 0x7f141614

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    move-object v0, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;Z)V

    sput-object v15, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v14, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const v3, 0x7f141615

    const v4, 0x7f141615

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const/4 v7, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;Z)V

    sput-object v14, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-object v0, v8

    move-object v1, v11

    move-object v2, v12

    move-object v3, v10

    move-object v4, v13

    move-object v5, v15

    move-object v6, v14

    filled-new-array/range {v0 .. v6}, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    iput p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->messageForBiometrics:I

    iput-object p5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    iput-boolean p7, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
