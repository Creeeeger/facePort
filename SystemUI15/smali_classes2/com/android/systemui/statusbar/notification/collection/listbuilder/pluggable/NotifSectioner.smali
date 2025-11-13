.class public abstract Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mBucket:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;->mBucket:I

    return-void
.end method


# virtual methods
.method public final getBucket()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;->mBucket:I

    return p0
.end method

.method public getComparator()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
.end method

.method public onEntriesUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
