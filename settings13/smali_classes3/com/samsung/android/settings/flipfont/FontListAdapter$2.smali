.class Lcom/samsung/android/settings/flipfont/FontListAdapter$2;
.super Ljava/lang/Object;
.source "FontListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/flipfont/FontListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;I)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iput p2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$2;->this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->-$$Nest$fgetmOnItemClickListener(Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$2;->val$position:I

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
