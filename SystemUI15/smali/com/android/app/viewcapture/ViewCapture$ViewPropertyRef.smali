.class public final Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public alpha:F

.field public bottom:I

.field public childCount:I

.field public clazz:Ljava/lang/Class;

.field public clipChildren:Z

.field public elevation:F

.field public hashCode:I

.field public id:I

.field public left:I

.field public next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

.field public right:I

.field public scaleX:F

.field public scaleY:F

.field public scrollX:I

.field public scrollY:I

.field public top:I

.field public translateX:F

.field public translateY:F

.field public visibility:I

.field public willNotDraw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    return-void
.end method


# virtual methods
.method public final toProto(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;Lcom/android/app/viewcapture/data/ViewNode$Builder;)Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;
    .locals 4

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$100(Lcom/android/app/viewcapture/data/ViewNode;I)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$300(Lcom/android/app/viewcapture/data/ViewNode;I)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->id:I

    iget-object v1, p1, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;->mNames:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    if-ltz v0, :cond_1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id/0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "NO_ID"

    :goto_0
    iget-object v2, p1, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;->mNames:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v0, v1}, Lcom/android/app/viewcapture/data/ViewNode;->access$1100(Lcom/android/app/viewcapture/data/ViewNode;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$1400(Lcom/android/app/viewcapture/data/ViewNode;I)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$1600(Lcom/android/app/viewcapture/data/ViewNode;I)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->right:I

    iget v1, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    sub-int/2addr v0, v1

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$1800(Lcom/android/app/viewcapture/data/ViewNode;I)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->bottom:I

    iget v1, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    sub-int/2addr v0, v1

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2000(Lcom/android/app/viewcapture/data/ViewNode;I)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateX:F

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2600(Lcom/android/app/viewcapture/data/ViewNode;F)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateY:F

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2800(Lcom/android/app/viewcapture/data/ViewNode;F)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollX:I

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2200(Lcom/android/app/viewcapture/data/ViewNode;I)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollY:I

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2400(Lcom/android/app/viewcapture/data/ViewNode;I)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleX:F

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3000(Lcom/android/app/viewcapture/data/ViewNode;F)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleY:F

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3200(Lcom/android/app/viewcapture/data/ViewNode;F)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->alpha:F

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3400(Lcom/android/app/viewcapture/data/ViewNode;F)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->visibility:I

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$4000(Lcom/android/app/viewcapture/data/ViewNode;I)V

    iget-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->willNotDraw:Z

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3600(Lcom/android/app/viewcapture/data/ViewNode;Z)V

    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->elevation:F

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$4200(Lcom/android/app/viewcapture/data/ViewNode;F)V

    iget-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clipChildren:Z

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3800(Lcom/android/app/viewcapture/data/ViewNode;Z)V

    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    if-ge v1, v2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/app/viewcapture/data/ViewNode;->newBuilder()Lcom/android/app/viewcapture/data/ViewNode$Builder;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->toProto(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;Lcom/android/app/viewcapture/data/ViewNode$Builder;)Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v3, v2}, Lcom/android/app/viewcapture/data/ViewNode;->access$600(Lcom/android/app/viewcapture/data/ViewNode;Lcom/android/app/viewcapture/data/ViewNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
