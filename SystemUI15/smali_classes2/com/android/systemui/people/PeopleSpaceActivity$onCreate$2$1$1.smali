.class final Lcom/android/systemui/people/PeopleSpaceActivity$onCreate$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/people/PeopleSpaceActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/PeopleSpaceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity$onCreate$2$1$1;->this$0:Lcom/android/systemui/people/PeopleSpaceActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result;

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceActivity$onCreate$2$1$1;->this$0:Lcom/android/systemui/people/PeopleSpaceActivity;

    sget v0, Lcom/android/systemui/people/PeopleSpaceActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;

    iget-object p1, p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;->data:Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
