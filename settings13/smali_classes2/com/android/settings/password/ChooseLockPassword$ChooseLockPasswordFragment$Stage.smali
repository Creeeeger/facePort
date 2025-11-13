.class public final enum Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
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
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final alphaHintForBiometrics:I

.field public final alphaHintForFace:I

.field public final alphaHintForFingerprint:I

.field public final alphaHintForProfile:I

.field public final alphaHintOverrideForProfile:Ljava/lang/String;

.field public final alphaMessageForBiometrics:I

.field public final buttonText:I

.field public final numericHint:I

.field public final numericHintForBiometrics:I

.field public final numericHintForFace:I

.field public final numericHintForFingerprint:I

.field public final numericHintForProfile:I

.field public final numericHintOverrideForProfile:Ljava/lang/String;

.field public final numericMessageForBiometrics:I


# direct methods
.method static constructor <clinit>()V
    .locals 55

    .line 712
    new-instance v18, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, v18

    sget v3, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header:I

    sget v5, Lcom/android/settings/R$string;->lockpassword_choose_your_profile_password_header:I

    sget v6, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header_for_fingerprint:I

    sget v7, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header_for_face:I

    sget v8, Lcom/android/settings/R$string;->lockpassword_choose_your_password_header_for_biometrics:I

    sget v9, Lcom/android/settings/R$string;->lockpassword_choose_your_pin_header:I

    sget v11, Lcom/android/settings/R$string;->lockpassword_choose_your_profile_pin_header:I

    sget v12, Lcom/android/settings/R$string;->lockpassword_choose_your_pin_header_for_fingerprint:I

    sget v13, Lcom/android/settings/R$string;->lockpassword_choose_your_pin_header_for_face:I

    sget v14, Lcom/android/settings/R$string;->lockpassword_choose_your_pin_header_for_biometrics:I

    sget v16, Lcom/android/settings/R$string;->lock_settings_picker_biometrics_added_security_message:I

    move/from16 v15, v16

    sget v17, Lcom/android/settings/R$string;->lockpassword_continue_label:I

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const-string v4, "Settings.SET_WORK_PROFILE_PASSWORD_HEADER"

    const-string v10, "Settings.SET_WORK_PROFILE_PIN_HEADER"

    invoke-direct/range {v0 .. v17}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIILjava/lang/String;IIIIIII)V

    sput-object v18, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 729
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v19, v0

    sget v25, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_header:I

    move/from16 v22, v25

    move/from16 v26, v25

    move/from16 v27, v25

    sget v24, Lcom/android/settings/R$string;->lockpassword_reenter_your_profile_password_header:I

    sget v33, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_header:I

    move/from16 v28, v33

    move/from16 v32, v33

    move/from16 v31, v33

    sget v30, Lcom/android/settings/R$string;->lockpassword_reenter_your_profile_pin_header:I

    sget v36, Lcom/android/settings/R$string;->lockpassword_ok_label:I

    move/from16 v54, v36

    const-string v20, "NeedToConfirm"

    const/16 v21, 0x1

    const-string v23, "Settings.REENTER_WORK_PROFILE_PASSWORD_HEADER"

    const-string v29, "Settings.REENTER_WORK_PROFILE_PIN_HEADER"

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v19 .. v36}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 746
    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v37, v1

    sget v43, Lcom/android/settings/R$string;->lockpassword_confirm_passwords_dont_match:I

    move/from16 v45, v43

    move/from16 v40, v43

    move/from16 v44, v43

    move/from16 v42, v43

    sget v50, Lcom/android/settings/R$string;->lockpassword_confirm_pins_dont_match:I

    move/from16 v51, v50

    move/from16 v46, v50

    move/from16 v49, v50

    move/from16 v48, v50

    const-string v38, "ConfirmWrong"

    const/16 v39, 0x2

    const-string v41, "UNDEFINED"

    const-string v47, "UNDEFINED"

    const/16 v52, 0x0

    const/16 v53, 0x0

    invoke-direct/range {v37 .. v54}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIILjava/lang/String;IIIIIII)V

    sput-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v3, 0x0

    aput-object v18, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 710
    sput-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;IIIIILjava/lang/String;IIIIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "IIIIIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 777
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move v1, p3

    .line 779
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    move-object v1, p4

    .line 780
    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintOverrideForProfile:Ljava/lang/String;

    move v1, p5

    .line 781
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForProfile:I

    move v1, p6

    .line 782
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    move v1, p7

    .line 783
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFace:I

    move v1, p8

    .line 784
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForBiometrics:I

    move v1, p9

    .line 786
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    move-object v1, p10

    .line 787
    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintOverrideForProfile:Ljava/lang/String;

    move v1, p11

    .line 788
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForProfile:I

    move v1, p12

    .line 789
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    move v1, p13

    .line 790
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFace:I

    move/from16 v1, p14

    .line 791
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForBiometrics:I

    move/from16 v1, p15

    .line 793
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForBiometrics:I

    move/from16 v1, p16

    .line 794
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForBiometrics:I

    move/from16 v1, p17

    .line 796
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 710
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 710
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
