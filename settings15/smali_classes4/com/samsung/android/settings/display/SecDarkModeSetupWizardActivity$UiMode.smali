.class final enum Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
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
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

.field public static final enum DARK:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

.field public static final enum DARK_TABLET:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

.field public static final enum LIGHT:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

.field public static final enum LIGHT_TABLET:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;


# instance fields
.field final drawableRes:I

.field final stringRes:I

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    const/4 v1, 0x0

    const v2, 0x7f1422b9

    const-string v5, "LIGHT"

    const/4 v3, 0x1

    const v4, 0x7f080a87

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;-><init>(IIIILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->LIGHT:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    const/4 v8, 0x1

    const v9, 0x7f1422b8

    const-string v12, "DARK"

    const/4 v10, 0x2

    const v11, 0x7f080a84

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;-><init>(IIIILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    new-instance v2, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    const/4 v14, 0x2

    const v15, 0x7f1422b9

    const-string v18, "LIGHT_TABLET"

    const/16 v16, 0x1

    const v17, 0x7f080a89

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;-><init>(IIIILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->LIGHT_TABLET:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    new-instance v3, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    const/4 v8, 0x3

    const-string v12, "DARK_TABLET"

    const v11, 0x7f080a86

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;-><init>(IIIILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->DARK_TABLET:Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    new-instance v4, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    const/4 v14, 0x4

    const-string v18, "LIGHT_FOLD"

    const v17, 0x7f080a88

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;-><init>(IIIILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    const/4 v8, 0x5

    const-string v12, "DARK_FOLD"

    const v11, 0x7f080a85

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;-><init>(IIIILjava/lang/String;)V

    move-object v0, v6

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->$VALUES:[Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p5, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->stringRes:I

    iput p3, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->value:I

    iput p4, p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->drawableRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->$VALUES:[Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/display/SecDarkModeSetupWizardActivity$UiMode;

    return-object v0
.end method
