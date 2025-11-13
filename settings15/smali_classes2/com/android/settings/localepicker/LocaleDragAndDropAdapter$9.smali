.class public final Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field public final synthetic val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p2, p2, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p1, p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p1, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateSelectBoxState(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p2, p2, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p1, p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$9;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
