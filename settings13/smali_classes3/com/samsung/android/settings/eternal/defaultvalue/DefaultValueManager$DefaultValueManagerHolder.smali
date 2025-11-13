.class Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;
.super Ljava/lang/Object;
.source "DefaultValueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultValueManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    return-void
.end method
