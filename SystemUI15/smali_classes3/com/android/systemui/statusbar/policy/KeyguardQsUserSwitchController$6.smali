.class public final Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;
.super Landroid/database/DataSetObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    sget-object v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateCurrentUser()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mIsKeyguardShowing:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getUserIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getUserDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateView$3()V

    :cond_1
    return-void
.end method
