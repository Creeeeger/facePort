.class final enum Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;
.super Ljava/lang/Enum;
.source "SecDarkModeSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

.field public static final enum DARK:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

.field public static final enum LIGHT:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;


# instance fields
.field final drawableRes:I

.field final stringRes:I

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 152
    new-instance v6, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    sget v3, Lcom/android/settings/R$string;->sec_dark_mode_light:I

    sget v5, Lcom/android/settings/R$drawable;->sec_suw_darkmode_help_light:I

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->LIGHT:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    .line 154
    new-instance v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    sget v10, Lcom/android/settings/R$string;->sec_dark_mode_dark:I

    sget v12, Lcom/android/settings/R$drawable;->sec_suw_darkmode_help_dark:I

    const-string v8, "DARK"

    const/4 v9, 0x1

    const/4 v11, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 151
    sput-object v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->$VALUES:[Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 166
    iput p3, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->stringRes:I

    .line 167
    iput p4, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->value:I

    .line 168
    iput p5, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->drawableRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;
    .locals 1

    .line 151
    const-class v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;
    .locals 1

    .line 151
    sget-object v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->$VALUES:[Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    return-object v0
.end method
