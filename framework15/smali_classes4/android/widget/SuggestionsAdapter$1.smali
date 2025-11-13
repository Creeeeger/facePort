.class Landroid/widget/SuggestionsAdapter$1;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/widget/Filter$Delayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mPreviousLength:I

.field final synthetic blacklist this$0:Landroid/widget/SuggestionsAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SuggestionsAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SuggestionsAdapter$1;->this$0:Landroid/widget/SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    return-void
.end method


# virtual methods
.method public blacklist getPostingDelay(Ljava/lang/CharSequence;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    if-ge v2, v3, :cond_1

    const-wide/16 v0, 0x1f4

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Landroid/widget/SuggestionsAdapter$1;->mPreviousLength:I

    return-wide v0
.end method
