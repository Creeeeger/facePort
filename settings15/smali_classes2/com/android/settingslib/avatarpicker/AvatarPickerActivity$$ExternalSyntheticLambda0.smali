.class public final synthetic Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;

    sget v0, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->$r8$clinit:I

    const v0, 0x7f0a0168

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    new-instance v1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;

    invoke-direct {v1, p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->initButtons()V

    return-void
.end method
