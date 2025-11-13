.class public final Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategoryBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final label:Ljava/lang/String;

.field public final shortcuts:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategoryBuilder;->label:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/composable/SubCategoryBuilder;->shortcuts:Ljava/util/List;

    return-void
.end method
