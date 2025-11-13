.class Lcom/android/internal/app/ChooserActivity$SemTransTask$1;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$SemTransTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$SemTransTask;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$SemTransTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$SemTransTask;

    .line 15825
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemTransTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 15828
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemTransTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingError:Z

    .line 15829
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemTransTask$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemTransTask;

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mActionCancelSelected:Z

    .line 15830
    return-void
.end method
