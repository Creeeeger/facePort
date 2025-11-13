.class public abstract Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCProperty;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TIMER_INIT_COMPLETED:J

.field public static final initObject:Ljava/lang/Object;

.field public static isInitCompleted:Z

.field public static final pcs:Ljava/beans/PropertyChangeSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v1, v0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCProperty;->pcs:Ljava/beans/PropertyChangeSupport;

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCProperty;->TIMER_INIT_COMPLETED:J

    return-void
.end method
