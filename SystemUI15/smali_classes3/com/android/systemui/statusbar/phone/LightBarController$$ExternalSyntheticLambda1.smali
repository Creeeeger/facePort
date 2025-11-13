.class public final synthetic Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    :cond_0
    return-void
.end method
