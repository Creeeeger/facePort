.class Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;
.super Ljava/lang/Object;
.source "AccessibilityItem.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;->this$0:Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;->this$0:Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->-$$Nest$monUpdateEngine(Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;I)V

    return-void
.end method
