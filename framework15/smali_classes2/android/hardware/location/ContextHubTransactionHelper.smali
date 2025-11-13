.class public Landroid/hardware/location/ContextHubTransactionHelper;
.super Ljava/lang/Object;
.source "ContextHubTransactionHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ContextHubTransactionHelper"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createNanoAppQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;>;)",
            "Landroid/hardware/location/IContextHubTransactionCallback;"
        }
    .end annotation

    const-string v0, "transaction cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/location/ContextHubTransactionHelper$1;

    invoke-direct {v0, p0}, Landroid/hardware/location/ContextHubTransactionHelper$1;-><init>(Landroid/hardware/location/ContextHubTransaction;)V

    return-object v0
.end method

.method public static blacklist createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/hardware/location/IContextHubTransactionCallback;"
        }
    .end annotation

    const-string v0, "transaction cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/location/ContextHubTransactionHelper$2;

    invoke-direct {v0, p0}, Landroid/hardware/location/ContextHubTransactionHelper$2;-><init>(Landroid/hardware/location/ContextHubTransaction;)V

    return-object v0
.end method
