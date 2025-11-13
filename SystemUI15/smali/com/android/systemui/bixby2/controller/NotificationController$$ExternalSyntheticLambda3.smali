.class public final synthetic Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/NotificationController$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/controller/NotificationController;->$r8$lambda$EdmZwQiR0B87AqEKJPGinEZp5cc(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    return-void
.end method
