.class public Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;
.super Ljava/lang/Object;
.source "DreamOverlayConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist buildConnection(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;III)Lcom/android/internal/util/PersistentServiceConnection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/content/Intent;",
            "III)",
            "Lcom/android/internal/util/PersistentServiceConnection<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/media/midi/MidiManager$$ExternalSyntheticLambda0;

    move-object v10, p2

    invoke-direct {v2, p2}, Landroid/media/midi/MidiManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    const v11, 0x4000001

    new-instance v12, Lcom/android/internal/util/PersistentServiceConnection;

    new-instance v4, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector$$ExternalSyntheticLambda0;-><init>()V

    const v6, 0x4000001

    move-object v0, v12

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/util/PersistentServiceConnection;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;Landroid/content/Intent;IIII)V

    return-object v12
.end method
