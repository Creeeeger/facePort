.class public final synthetic Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/people/PeopleSpaceTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;ILandroid/app/people/PeopleSpaceTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iput p2, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;->f$2:Landroid/app/people/PeopleSpaceTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iget v1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda6;->f$2:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateAppWidgetOptionsAndView(ILandroid/app/people/PeopleSpaceTile;)V

    return-void
.end method
