.class public abstract Lcom/android/systemui/qs/UserSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDefaultValue:I

.field public mListening:Z

.field public mObservedValue:I

.field public final mSettingName:Ljava/lang/String;

.field public final mSettingsProxy:Lcom/android/systemui/util/settings/UserSettingsProxy;

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/UserSettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/UserSettingObserver;-><init>(Lcom/android/systemui/util/settings/UserSettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/settings/UserSettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/UserSettingsProxy;

    iput-object p3, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingName:Ljava/lang/String;

    iput p5, p0, Lcom/android/systemui/qs/UserSettingObserver;->mDefaultValue:I

    iput p5, p0, Lcom/android/systemui/qs/UserSettingObserver;->mObservedValue:I

    iput p4, p0, Lcom/android/systemui/qs/UserSettingObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mListening:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mObservedValue:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/UserSettingsProxy;

    iget-object v1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/UserSettingObserver;->mDefaultValue:I

    iget p0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mUserId:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract handleValueChanged(IZ)V
.end method

.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/UserSettingsProxy;

    iget-object v0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingName:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mDefaultValue:I

    iget v2, p0, Lcom/android/systemui/qs/UserSettingObserver;->mUserId:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mObservedValue:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mObservedValue:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/UserSettingObserver;->handleValueChanged(IZ)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mListening:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/UserSettingsProxy;

    iget-object v0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingName:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mDefaultValue:I

    iget v2, p0, Lcom/android/systemui/qs/UserSettingObserver;->mUserId:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mObservedValue:I

    iget-object p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/UserSettingsProxy;

    iget-object v0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/qs/UserSettingObserver;->mUserId:I

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/UserSettingsProxy;

    invoke-interface {p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    iget p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mDefaultValue:I

    iput p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mObservedValue:I

    :goto_0
    return-void
.end method

.method public final setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mUserId:I

    iget-boolean p1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mListening:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/UserSettingsProxy;

    iget-object v1, p0, Lcom/android/systemui/qs/UserSettingObserver;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/UserSettingObserver;->mUserId:I

    invoke-interface {v0, v1, p1, p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    return-void
.end method
