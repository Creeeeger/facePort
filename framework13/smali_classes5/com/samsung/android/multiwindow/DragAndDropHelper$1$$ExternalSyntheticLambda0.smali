.class public final synthetic Lcom/samsung/android/multiwindow/DragAndDropHelper$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/multiwindow/DragAndDropHelper$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;->lambda$onConnected$0$com-samsung-android-multiwindow-DragAndDropHelper$1()V

    return-void
.end method
