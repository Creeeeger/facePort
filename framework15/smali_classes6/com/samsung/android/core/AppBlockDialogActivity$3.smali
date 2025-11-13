.class Lcom/samsung/android/core/AppBlockDialogActivity$3;
.super Ljava/lang/Object;
.source "AppBlockDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/core/AppBlockDialogActivity;->delayFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/core/AppBlockDialogActivity;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/core/AppBlockDialogActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$3;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$3;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->finish()V

    return-void
.end method
