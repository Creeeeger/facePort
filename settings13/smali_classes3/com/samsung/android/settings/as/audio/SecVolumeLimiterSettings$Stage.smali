.class final enum Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;
.super Ljava/lang/Enum;
.source "SecVolumeLimiterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

.field public static final enum ConfirmWrong:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

.field public static final enum Introduction:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

.field public static final enum NeedToConfirm:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 247
    new-instance v6, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    sget v3, Lcom/android/settings/R$string;->sec_volume_limiter_choose_your_password_header:I

    sget v4, Lcom/android/settings/R$string;->sec_volume_limiter_choose_your_pin_header:I

    sget v12, Lcom/android/settings/R$string;->sec_volume_limiter_continue_label:I

    const-string v1, "Introduction"

    const/4 v2, 0x0

    move-object v0, v6

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    .line 251
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    sget v16, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_header:I

    sget v17, Lcom/android/settings/R$string;->sec_volume_limiter_confirm_your_pin_header:I

    sget v18, Lcom/android/settings/R$string;->sec_common_ok:I

    const-string v14, "NeedToConfirm"

    const/4 v15, 0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    .line 255
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    sget v10, Lcom/android/settings/R$string;->sec_volume_limiter_confirm_passwords_dont_match:I

    sget v11, Lcom/android/settings/R$string;->sec_volume_limiter_incorrect_pin:I

    const-string v8, "ConfirmWrong"

    const/4 v9, 0x2

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 245
    sput-object v2, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->$VALUES:[Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 260
    iput p3, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->alphaHint:I

    .line 261
    iput p4, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->numericHint:I

    .line 262
    iput p5, p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;
    .locals 1

    .line 245
    const-class v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;
    .locals 1

    .line 245
    sget-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->$VALUES:[Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings$Stage;

    return-object v0
.end method
