.class public final synthetic Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/zen/ZenModePeopleSettings;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenModePeopleSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenModePeopleSettings;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenModePeopleSettings;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePeopleSettings$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->CONTACT_ID:I

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->PHONE_NUMBER:I

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
