.class public abstract Lcom/android/systemui/qs/SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDefaultValue:I

.field public mListening:Z

.field public mObservedValue:I

.field public final mSettingName:Ljava/lang/String;

.field public final mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    iput-object p3, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    iput p4, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/SettingObserver;->mListening:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    iget-object v1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract handleValueChanged(IZ)V
.end method

.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    iget-object v0, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SettingObserver;->handleValueChanged(IZ)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/SettingObserver;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SettingObserver;->mListening:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    iget-object v0, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    iget-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    iget-object v0, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/SettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    invoke-interface {p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    iget p1, p0, Lcom/android/systemui/qs/SettingObserver;->mDefaultValue:I

    iput p1, p0, Lcom/android/systemui/qs/SettingObserver;->mObservedValue:I

    :goto_0
    return-void
.end method
