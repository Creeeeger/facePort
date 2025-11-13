.class Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
.super Landroid/companion/IOnAssociationsChangedListener$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnAssociationsChangedListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$CnnfIJxX4Jxd5y8qBzYOkQuP22w(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->lambda$onAssociationsChanged$0(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;)Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .locals 0

    iget-object p0, p0, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->mListener:Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/companion/IOnAssociationsChangedListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->mListener:Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$onAssociationsChanged$0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->mListener:Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;

    invoke-interface {v0, p1}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;->onAssociationsChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onAssociationsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
