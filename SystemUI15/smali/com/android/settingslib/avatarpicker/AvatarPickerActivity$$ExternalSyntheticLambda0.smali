.class public final synthetic Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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

    const v0, 0x7f0a0137

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt()V

    new-instance v1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$AutoFitGridLayoutManager;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity$GridItemDecoration;-><init>(Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/android/settingslib/avatarpicker/AvatarPickerActivity;->initButtons()V

    return-void
.end method
