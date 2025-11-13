.class public final enum Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

.field public static final enum CONTENTS_PANEL:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    const-string v2, "CONTENTS_PANEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->CONTENTS_PANEL:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    filled-new-array {v0, v1}, [Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->$VALUES:[Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    return-object v0
.end method
