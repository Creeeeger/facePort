.class public final Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/WorkLockActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivityHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityHelper;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->showConfirmCredentialActivity()V

    return-void
.end method
