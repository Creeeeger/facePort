.class public final Lcom/android/systemui/keyguard/WorkLockActivityController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIatm:Landroid/app/IActivityTaskManager;

.field public final mLockListener:Lcom/android/systemui/keyguard/WorkLockActivityController$1;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/keyguard/WorkLockActivityController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/app/IActivityTaskManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/app/IActivityTaskManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivityController$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivityController;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/keyguard/WorkLockActivityController;->mIatm:Landroid/app/IActivityTaskManager;

    invoke-virtual {p3, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method
