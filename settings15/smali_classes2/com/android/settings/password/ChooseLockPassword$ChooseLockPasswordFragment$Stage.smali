.class public final enum Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final alphaHintForBiometrics:I

.field public final alphaHintForFace:I

.field public final alphaHintForFingerprint:I

.field public final alphaHintForManagedProfile:I

.field public final alphaHintForPrivateProfile:I

.field public final alphaHintOverrideForProfile:Ljava/lang/String;

.field public final alphaMessageForBiometrics:I

.field public final buttonText:I

.field public final numericHint:I

.field public final numericHintForBiometrics:I

.field public final numericHintForFace:I

.field public final numericHintForFingerprint:I

.field public final numericHintForManagedProfile:I

.field public final numericHintForPrivateProfile:I

.field public final numericHintOverrideForProfile:Ljava/lang/String;

.field public final numericMessageForBiometrics:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v15, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object v0, v15

    const v18, 0x7f141585

    const v19, 0x7f1415de

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f1415a1

    const-string v4, "Settings.SET_WORK_PROFILE_PASSWORD_HEADER"

    const v5, 0x7f1415af

    const v6, 0x7f1415a4

    const v7, 0x7f1415a3

    const v8, 0x7f1415a2

    const v9, 0x7f141d39

    const v10, 0x7f1415aa

    const-string v11, "Settings.SET_WORK_PROFILE_PIN_HEADER"

    const v12, 0x7f1415b1

    const v13, 0x7f1415ad

    const v14, 0x7f1415ac

    const v16, 0x7f1415ab

    move-object/from16 v20, v15

    move/from16 v15, v16

    const v16, 0x7f141d3b

    const v17, 0x7f141585

    invoke-direct/range {v0 .. v19}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIIILjava/lang/String;IIIIIIII)V

    move-object/from16 v0, v20

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    new-instance v15, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object v1, v15

    const/16 v19, 0x0

    const v20, 0x7f142518

    const-string v2, "NeedToConfirm"

    const/4 v3, 0x1

    const v4, 0x7f1415c0

    const-string v5, "Settings.REENTER_WORK_PROFILE_PASSWORD_HEADER"

    const v6, 0x7f1415ff

    const v7, 0x7f1415c0

    const v8, 0x7f1415c0

    const v9, 0x7f1415c0

    const v10, 0x7f1415c0

    const v11, 0x7f1415d4

    const-string v12, "Settings.REENTER_WORK_PROFILE_PIN_HEADER"

    const v13, 0x7f141600

    const v14, 0x7f1415d4

    const v16, 0x7f1415d4

    move-object/from16 v21, v15

    move/from16 v15, v16

    const v17, 0x7f1415d4

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIIILjava/lang/String;IIIIIIII)V

    move-object/from16 v1, v21

    sput-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    new-instance v15, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object v2, v15

    const/16 v20, 0x0

    const v21, 0x7f142518

    const-string v3, "ConfirmWrong"

    const/4 v4, 0x2

    const v5, 0x7f1415b4

    const-string v6, "UNDEFINED"

    const v7, 0x7f1415b4

    const v8, 0x7f1415b4

    const v9, 0x7f1415b4

    const v10, 0x7f1415b4

    const v11, 0x7f1415b4

    const v12, 0x7f1415b5

    const-string v13, "UNDEFINED"

    const v14, 0x7f1415b5

    const v16, 0x7f1415b5

    move-object/from16 v22, v15

    move/from16 v15, v16

    const v17, 0x7f1415b5

    const v18, 0x7f1415b5

    invoke-direct/range {v2 .. v21}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIIILjava/lang/String;IIIIIIII)V

    move-object/from16 v2, v22

    sput-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    filled-new-array {v0, v1, v2}, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;IIIIIILjava/lang/String;IIIIIIII)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move v1, p3

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    move-object v1, p4

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintOverrideForProfile:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForManagedProfile:I

    move v1, p6

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    move v1, p7

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFace:I

    move v1, p8

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForBiometrics:I

    move v1, p9

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForPrivateProfile:I

    move v1, p10

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    move-object v1, p11

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintOverrideForProfile:Ljava/lang/String;

    move v1, p12

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForManagedProfile:I

    move v1, p13

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    move/from16 v1, p14

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFace:I

    move/from16 v1, p15

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForBiometrics:I

    move/from16 v1, p16

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForPrivateProfile:I

    move/from16 v1, p17

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForBiometrics:I

    move/from16 v1, p18

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForBiometrics:I

    move/from16 v1, p19

    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
