.class public final synthetic Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;Z[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;->f$2:[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;->f$2:[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    sget v3, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->$r8$clinit:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, v3, v0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
