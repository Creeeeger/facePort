.class public Lcom/android/systemui/qp/SubroomSoundSettingsView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mReceiver:Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

.field public mSoundBackground:Landroid/widget/LinearLayout;

.field public mSoundButton:Landroid/widget/ImageView;

.field public mSoundProfile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView$1;-><init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V

    iput-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mReceiver:Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const-string v2, "android.settings.ALL_SOUND_MUTE"

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mReceiver:Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "all_sound_off"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundProfile:I

    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qp/SubroomSoundSettingsView;->setSoundIcon(IZ)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mReceiver:Lcom/android/systemui/qp/SubroomSoundSettingsView$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0bc9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    const v0, 0x7f0a0bc7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundBackground:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomSoundSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/qp/SubroomSoundSettingsView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final setSoundIcon(IZ)V
    .locals 6

    const/4 v0, 0x1

    const v1, 0x7f130081

    const-string v2, ", "

    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    const v5, 0x7f130f47

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f131319

    :goto_0
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    if-ne p1, v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    const v5, 0x7f130f49

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f131318

    :goto_1
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    const v5, 0x7f130f48

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const v1, 0x7f13131a

    :goto_2
    invoke-static {v2, v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    const v1, 0x7f080ed1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_8

    move v1, v2

    goto :goto_4

    :cond_5
    const v1, 0x7f080f3a

    goto :goto_4

    :cond_6
    const v1, 0x7f080f51

    goto :goto_4

    :cond_7
    const v1, 0x7f080f47

    :cond_8
    :goto_4
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_6

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz p1, :cond_c

    if-eq p1, v0, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v4, :cond_d

    move v1, v2

    goto :goto_5

    :cond_a
    const v1, 0x7f080f46

    goto :goto_5

    :cond_b
    const v1, 0x7f080f61

    goto :goto_5

    :cond_c
    const v1, 0x7f080f50

    :cond_d
    :goto_5
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    iget-object p2, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mSoundBackground:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomSoundSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0813e9

    if-eqz p1, :cond_e

    if-eq p1, v4, :cond_e

    const v0, 0x7f0813e5

    :cond_e
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
