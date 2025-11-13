.class public abstract Landroidx/recyclerview/widget/DiffUtil$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(II)Z
.end method

.method public abstract areItemsTheSame(II)Z
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getNewListSize()I
.end method

.method public abstract getOldListSize()I
.end method
