.class Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;
.super Ljava/lang/Object;
.source "ViewControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ViewControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LastChangeEvent"
.end annotation


# instance fields
.field private blacklist mEventID:Ljava/lang/String;

.field private blacklist mPowerOff:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist clean()V
    .locals 1

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    .line 794
    iput-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    .line 796
    return-void
.end method

.method private blacklist setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 799
    if-eqz p1, :cond_1

    .line 800
    const-string v0, "EventID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iput-object p2, p0, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    goto :goto_0

    .line 802
    :cond_0
    const-string v0, "PowerOFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    iput-object p2, p0, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    .line 806
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getEventID()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->mEventID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 810
    return-object v0

    .line 812
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getPowerOff()Ljava/lang/String;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->mPowerOff:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 817
    return-object v0

    .line 819
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist parseFromXML(Ljava/lang/String;)V
    .locals 7
    .param p1, "xml"    # Ljava/lang/String;

    .line 823
    const-string v0, "[ViewControl] LastChangeEvent.parseFromXML() exception : "

    invoke-direct {p0}, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->clean()V

    .line 825
    const-string v1, "ViewControllerImpl"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 831
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 834
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 835
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 837
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 838
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 840
    .local v5, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 841
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 856
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_1

    .line 850
    :pswitch_2
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 851
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 846
    :pswitch_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 847
    goto :goto_1

    .line 843
    :pswitch_4
    nop

    .line 860
    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    goto :goto_0

    .line 840
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "eventType":I
    :cond_2
    goto :goto_2

    .line 868
    :catch_0
    move-exception v0

    goto :goto_3

    .line 865
    :catch_1
    move-exception v3

    .line 866
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 867
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 862
    :catch_2
    move-exception v3

    .line 863
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 864
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    nop

    .line 870
    :goto_3
    return-void

    .line 826
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :goto_4
    const-string v0, "[ViewControl] LastChangeEvent.parseFromXML() paramter xml is null or empty!"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
