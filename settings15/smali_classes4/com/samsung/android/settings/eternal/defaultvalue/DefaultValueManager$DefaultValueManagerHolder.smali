.class public abstract Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mXmlManager:Lcom/samsung/android/settings/eternal/defaultvalue/XmlManager;

    new-instance v1, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    sput-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    return-void
.end method
