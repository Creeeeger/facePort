.class Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;

.field final synthetic blacklist val$this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;

    .line 11076
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter$1;->val$this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .locals 1

    .line 11079
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 11080
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->updateRowDivider()V

    .line 11081
    return-void
.end method
