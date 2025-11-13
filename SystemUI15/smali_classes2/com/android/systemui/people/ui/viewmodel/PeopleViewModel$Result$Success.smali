.class public final Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;
.super Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final data:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;->data:Landroid/content/Intent;

    return-void
.end method
