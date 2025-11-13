.class final enum Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

.field public static final enum STAND_BY:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

.field public static final enum TRY_AGAIN:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    const-string v1, "STAND_BY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->STAND_BY:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    new-instance v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    const-string v2, "TRY_AGAIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->TRY_AGAIN:Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    filled-new-array {v0, v1}, [Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->$VALUES:[Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->$VALUES:[Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/TouchSettingsExperienceFragment$Status;

    return-object v0
.end method
