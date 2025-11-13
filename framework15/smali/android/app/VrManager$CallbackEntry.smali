.class Landroid/app/VrManager$CallbackEntry;
.super Ljava/lang/Object;
.source "VrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackEntry"
.end annotation


# instance fields
.field final greylist-max-o mCallback:Landroid/app/VrStateCallback;

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final greylist-max-o mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

.field final greylist-max-o mStateCallback:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method constructor blacklist <init>(Landroid/app/VrStateCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/VrManager$CallbackEntry$1;

    invoke-direct {v0, p0}, Landroid/app/VrManager$CallbackEntry$1;-><init>(Landroid/app/VrManager$CallbackEntry;)V

    iput-object v0, p0, Landroid/app/VrManager$CallbackEntry;->mStateCallback:Landroid/service/vr/IVrStateCallbacks;

    new-instance v0, Landroid/app/VrManager$CallbackEntry$2;

    invoke-direct {v0, p0}, Landroid/app/VrManager$CallbackEntry$2;-><init>(Landroid/app/VrManager$CallbackEntry;)V

    iput-object v0, p0, Landroid/app/VrManager$CallbackEntry;->mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

    iput-object p1, p0, Landroid/app/VrManager$CallbackEntry;->mCallback:Landroid/app/VrStateCallback;

    iput-object p2, p0, Landroid/app/VrManager$CallbackEntry;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
