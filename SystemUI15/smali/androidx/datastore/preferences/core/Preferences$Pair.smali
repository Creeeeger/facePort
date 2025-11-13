.class public final Landroidx/datastore/preferences/core/Preferences$Pair;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final key:Landroidx/datastore/preferences/core/Preferences$Key;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/core/Preferences$Key;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/core/Preferences$Pair;->key:Landroidx/datastore/preferences/core/Preferences$Key;

    iput-object p2, p0, Landroidx/datastore/preferences/core/Preferences$Pair;->value:Ljava/lang/Object;

    return-void
.end method
