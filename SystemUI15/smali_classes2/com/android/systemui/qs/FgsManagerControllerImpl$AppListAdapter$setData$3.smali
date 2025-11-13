.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $newData:Ljava/util/List;

.field public final synthetic $oldData:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;->$oldData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;->$newData:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;->$oldData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget-boolean p1, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->stopped:Z

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;->$newData:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget-boolean p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->stopped:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;->$oldData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;->$newData:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getNewListSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;->$newData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;->$oldData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
