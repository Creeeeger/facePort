.class Lcom/android/internal/app/ChooserActivity$SemTempHolderForMultiTarget;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemTempHolderForMultiTarget"
.end annotation


# instance fields
.field blacklist cn:Landroid/content/ComponentName;

.field blacklist text:Ljava/lang/String;

.field blacklist text2:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field blacklist userId:I

.field blacklist viewType:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V
    .locals 0
    .param p2, "holder"    # Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 10567
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemTempHolderForMultiTarget;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10568
    iget p1, p2, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->viewType:I

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$SemTempHolderForMultiTarget;->viewType:I

    .line 10569
    iget p1, p2, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->userId:I

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$SemTempHolderForMultiTarget;->userId:I

    .line 10570
    iget-object p1, p2, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->cn:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemTempHolderForMultiTarget;->cn:Landroid/content/ComponentName;

    .line 10571
    iget-object p1, p2, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemTempHolderForMultiTarget;->text:Ljava/lang/String;

    .line 10572
    iget-object p1, p2, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemTempHolderForMultiTarget;->text2:Ljava/lang/String;

    .line 10573
    return-void
.end method
