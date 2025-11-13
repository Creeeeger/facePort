.class public final Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field public mHeaderController:Lcom/android/settings/widget/EntityHeaderController;


# direct methods
.method public static $r8$lambda$28nxVRIy6OyAIBDQlsHJ_o7VGng(Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v1, 0x1010429

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Z)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 1

    const-string v0, "current_icon"

    invoke-direct {p0, p1, v0, p3}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method


# virtual methods
.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    if-nez v1, :cond_0

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a05c5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v3, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v3, v2, v1, p1}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/notification/modes/IconLoader;->getInstance()Lcom/android/settings/notification/modes/IconLoader;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/android/settings/notification/modes/ZenMode;->getIcon(Landroid/content/Context;Lcom/android/settings/notification/modes/IconLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/modes/ZenModeIconPickerIconPreferenceController;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/notification/modes/FutureUtil$1;

    invoke-direct {v1, p2, v0}, Lcom/android/settings/notification/modes/FutureUtil$1;-><init>(Ljava/util/function/Consumer;[Ljava/lang/Object;)V

    new-instance p2, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {p2, p1, v1}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p1, p2, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
