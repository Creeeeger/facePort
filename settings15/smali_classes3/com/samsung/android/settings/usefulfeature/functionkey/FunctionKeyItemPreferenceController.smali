.class public abstract Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;
.super Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\'\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;",
        "Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "item",
        "Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;)V",
        "getItem",
        "()Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;",
        "displayPreference",
        "",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "",
        "getSummary",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final item:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->item:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->item:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iget p1, p1, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->order:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    :goto_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    const-string v2, "hide"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    const-string v2, "grayout"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->item:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->availabilityStatus:I

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItem()Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->item:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyItemPreferenceController;->item:Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/item/FunctionKeyItem;->summary:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
