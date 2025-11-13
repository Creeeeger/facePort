.class public final Lcom/android/systemui/qs/bar/MicModeDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mItemsList:Ljava/util/ArrayList;

.field public mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mAudioManager:Landroid/media/AudioManager;

    const-string p0, "micmode_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMicModeType()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "ASMM1032"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03ae

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a070c

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const v1, 0x7f0d03b0

    invoke-virtual {p1, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getMicModeEffect()I

    move-result p1

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isMicModeWifiCalling()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getModeInternal()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    const/4 v5, 0x2

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    const-string v2, "MicModeDetailAdapter"

    const-string/jumbo v6, "setItems"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    add-int/2addr v3, v0

    :goto_3
    if-ge v0, v3, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/systemui/qs/bar/micmode/MicModeItemFactory;->create(ILandroid/content/Context;)Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget-object v3, v0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_4
    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 p1, p1, 0x3

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iput p1, v0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->selectedMode:I

    iget-object p1, v0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, v0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->handler:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$H;

    invoke-virtual {p1, v5, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mMicModeActivationItems:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1393

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f1310cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setToggleState(Z)V
    .locals 0

    return-void
.end method

.method public final updateDetailItem(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "sec-600"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    const/16 v3, 0x258

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    const-string/jumbo v3, "sec-400"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    const/16 v5, 0x190

    invoke-static {v3, v5, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    const v5, 0x7f060475

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    const v7, 0x7f060476

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    invoke-virtual {p1, v5}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080cb8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v4, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    move-object v0, p0

    goto :goto_2

    :cond_2
    move-object v0, v6

    :goto_2
    if-eqz p2, :cond_3

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object p0, v6

    :goto_3
    invoke-virtual {p1, v0, v6, p0, v6}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_5
    return-void
.end method
