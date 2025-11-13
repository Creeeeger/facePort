.class public final synthetic Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda1;->f$0:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/share/common/ShareUtil$$ExternalSyntheticLambda1;->f$0:Ljava/util/Optional;

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/common/ShareUtil;->$r8$lambda$HNx8qYycFDh1zLvtLFsnhMdVKmI(Ljava/util/Optional;Lcom/samsung/android/settings/share/structure/ShareComponent;)Lcom/samsung/android/settings/share/structure/CallerComponent;

    move-result-object p0

    return-object p0
.end method
