.class public final Lcom/android/systemui/controls/ui/ControlsSettingActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/ControlsSettingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/ControlsSettingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/SALogger;)V
    .locals 0

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;->controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iput-object p7, p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    return-void
.end method


# virtual methods
.method public final getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ControlsSettingActivity"

    return-object p0
.end method

.method public final onBackKeyPressed()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v2, v3, v1}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;->controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    iput-object v1, v0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0a0d52

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06062b

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f0a0688

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-virtual {v2, v1}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getWidthPercentBasic(F)F

    move-result v1

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(FLandroid/view/View;)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;-><init>(Lcom/android/systemui/controls/util/SALogger;)V

    const p0, 0x7f0a046f

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iget-boolean p0, v0, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    iput-object v1, v0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_0
    return p0
.end method
