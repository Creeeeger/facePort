.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static appDataCapacity:J

.field public static appTrashAppCloneCapacity:J

.field public static appTrashExternalSDCapacity:J

.field public static appTrashInternalCapacity:J

.field public static final isLoadCompleted:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/TrashManager;->isLoadCompleted:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
