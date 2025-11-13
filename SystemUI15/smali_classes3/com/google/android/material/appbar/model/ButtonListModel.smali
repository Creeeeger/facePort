.class public final Lcom/google/android/material/appbar/model/ButtonListModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buttonModels:Ljava/util/List;

.field public final buttonStyle:Lcom/google/android/material/appbar/model/ButtonStyle;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/model/ButtonStyle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/appbar/model/ButtonStyle;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/material/appbar/model/ButtonModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/model/ButtonListModel;->buttonStyle:Lcom/google/android/material/appbar/model/ButtonStyle;

    iput-object p2, p0, Lcom/google/android/material/appbar/model/ButtonListModel;->buttonModels:Ljava/util/List;

    return-void
.end method
