.class public final Lcom/android/systemui/controls/util/ControlsUtil$getListOfServices$getLocaleComparator$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/util/ControlsUtil$getListOfServices$getLocaleComparator$$inlined$compareBy$1;->$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsUtil$getListOfServices$getLocaleComparator$$inlined$compareBy$1;->$comparator:Ljava/util/Comparator;

    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p2, Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-virtual {p2}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
