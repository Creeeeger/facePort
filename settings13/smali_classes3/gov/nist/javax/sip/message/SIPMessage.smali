.class public abstract Lgov/nist/javax/sip/message/SIPMessage;
.super Lgov/nist/javax/sip/message/MessageObject;
.source "SIPMessage.java"


# static fields
.field private static final AUTHORIZATION_LOWERCASE:Ljava/lang/String;

.field private static final CONTACT_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

.field private static final ERROR_LOWERCASE:Ljava/lang/String;

.field private static final EXPIRES_LOWERCASE:Ljava/lang/String;

.field private static final RECORDROUTE_LOWERCASE:Ljava/lang/String;

.field private static final ROUTE_LOWERCASE:Ljava/lang/String;

.field private static final VIA_LOWERCASE:Ljava/lang/String;


# instance fields
.field protected applicationData:Ljava/lang/Object;

.field protected cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

.field protected callIdHeader:Lgov/nist/javax/sip/header/CallID;

.field private contentEncodingCharset:Ljava/lang/String;

.field protected contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

.field protected fromHeader:Lgov/nist/javax/sip/header/From;

.field protected headers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

.field private messageContent:Ljava/lang/String;

.field private messageContentBytes:[B

.field private messageContentObject:Ljava/lang/Object;

.field private nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected nullRequest:Z

.field protected size:I

.field protected toHeader:Lgov/nist/javax/sip/header/To;

.field protected unrecognizedHeaders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Content-Type"

    .line 937
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    const-string v0, "Error-Info"

    .line 966
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    const-string v0, "Contact"

    .line 978
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    const-string v0, "Via"

    .line 1003
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    const-string v0, "Authorization"

    .line 1061
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    const-string v0, "Route"

    .line 1092
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    const-string v0, "Record-Route"

    .line 1134
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    const-string v0, "Content-Disposition"

    .line 1632
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    const-string v0, "Content-Encoding"

    .line 1644
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    const-string v0, "Content-Language"

    .line 1656
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    const-string v0, "Expires"

    .line 1668
    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 542
    invoke-direct {p0}, Lgov/nist/javax/sip/message/MessageObject;-><init>()V

    .line 130
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultContentEncodingCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    .line 543
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    .line 544
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 545
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 547
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentLength;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/header/ContentLength;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 561
    :try_start_0
    instance-of v0, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v0, :cond_0

    .line 562
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 563
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0, p1, v0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov/nist/javax/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 559
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null header!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 0

    if-eqz p1, :cond_1

    .line 919
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 920
    instance-of p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz p1, :cond_0

    .line 921
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    move-result-object p0

    :cond_0
    return-object p0

    .line 918
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bad name"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public attachHeader(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 623
    invoke-virtual {p0, p1, p2, v0}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V

    return-void
.end method

.method public attachHeader(Lgov/nist/javax/sip/header/SIPHeader;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov/nist/javax/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 647
    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->hasList(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    invoke-static {p1}, Lgov/nist/javax/sip/message/ListMap;->getList(Lgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v0

    .line 649
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 655
    :goto_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 657
    iget-object p2, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 658
    :cond_1
    iget-object p2, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    instance-of p2, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-nez p2, :cond_3

    .line 659
    instance-of p1, v0, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz p1, :cond_2

    .line 661
    :try_start_0
    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    .line 662
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    move-result p1

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void

    .line 670
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p1

    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    if-eqz p1, :cond_5

    .line 674
    iget-object p2, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 675
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 676
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 677
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/header/SIPObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 678
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 683
    :cond_5
    iget-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 684
    iget-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 687
    :cond_6
    instance-of p1, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz p1, :cond_8

    .line 688
    iget-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 689
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz p1, :cond_7

    .line 691
    move-object p2, v0

    check-cast p2, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {p1, p2, p3}, Lgov/nist/javax/sip/header/SIPHeaderList;->concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V

    goto :goto_3

    .line 693
    :cond_7
    iget-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 695
    :cond_8
    iget-object p1, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :goto_3
    instance-of p1, v0, Lgov/nist/javax/sip/header/From;

    if-eqz p1, :cond_9

    .line 701
    check-cast v0, Lgov/nist/javax/sip/header/From;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    goto :goto_4

    .line 702
    :cond_9
    instance-of p1, v0, Lgov/nist/javax/sip/header/ContentLength;

    if-eqz p1, :cond_a

    .line 703
    check-cast v0, Lgov/nist/javax/sip/header/ContentLength;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    goto :goto_4

    .line 704
    :cond_a
    instance-of p1, v0, Lgov/nist/javax/sip/header/To;

    if-eqz p1, :cond_b

    .line 705
    check-cast v0, Lgov/nist/javax/sip/header/To;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    goto :goto_4

    .line 706
    :cond_b
    instance-of p1, v0, Lgov/nist/javax/sip/header/CSeq;

    if-eqz p1, :cond_c

    .line 707
    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    goto :goto_4

    .line 708
    :cond_c
    instance-of p1, v0, Lgov/nist/javax/sip/header/CallID;

    if-eqz p1, :cond_d

    .line 709
    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    goto :goto_4

    .line 710
    :cond_d
    instance-of p1, v0, Lgov/nist/javax/sip/header/MaxForwards;

    if-eqz p1, :cond_e

    .line 711
    check-cast v0, Lgov/nist/javax/sip/header/MaxForwards;

    iput-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    :cond_e
    :goto_4
    return-void

    .line 642
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null header"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 473
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPMessage;

    .line 474
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    const/4 v1, 0x0

    .line 475
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->fromHeader:Lgov/nist/javax/sip/header/From;

    .line 476
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->toHeader:Lgov/nist/javax/sip/header/To;

    .line 477
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    .line 478
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    .line 479
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    .line 480
    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->maxForwardsHeader:Lgov/nist/javax/sip/header/MaxForwards;

    .line 481
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    .line 482
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 483
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 485
    invoke-virtual {v2}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-direct {v0, v2}, Lgov/nist/javax/sip/message/SIPMessage;->attachHeader(Lgov/nist/javax/sip/header/SIPHeader;)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    .line 491
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 492
    invoke-static {v1}, Lgov/nist/core/GenericObject;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 493
    :cond_2
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    iput-object p0, v0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 4

    .line 361
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 364
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    .line 366
    instance-of v3, v2, Lgov/nist/javax/sip/header/ContentLength;

    if-nez v3, :cond_0

    .line 367
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\r\n"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 375
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentLengthHeader:Lgov/nist/javax/sip/header/ContentLength;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 378
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 380
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 381
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v2, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz v2, :cond_6

    :cond_4
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    goto :goto_2

    .line 389
    :cond_5
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v2, v1

    goto :goto_3

    :catch_0
    move-exception p0

    .line 392
    invoke-static {p0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 395
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1602
    :cond_0
    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    .line 1603
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1604
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1605
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result p0

    iget-object v2, p1, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-eq p0, v2, :cond_1

    return v1

    .line 1609
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1610
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    .line 1611
    iget-object v2, p1, Lgov/nist/javax/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 1612
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1611
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    if-nez v2, :cond_2

    return v1

    .line 1615
    :cond_2
    invoke-virtual {v2, p0}, Lgov/nist/javax/sip/header/SIPObject;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public getCSeq()Ljavax/sip/header/CSeqHeader;
    .locals 0

    .line 1048
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPMessage;->cSeqHeader:Lgov/nist/javax/sip/header/CSeq;

    return-object p0
.end method

.method protected final getCharset()Ljava/lang/String;
    .locals 1

    .line 1864
    invoke-virtual {p0}, Lgov/nist/javax/sip/message/SIPMessage;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1866
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1867
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 1868
    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    .line 1258
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 1260
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 1262
    :cond_1
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPMessage;->messageContentBytes:[B

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;
    .locals 1

    .line 933
    sget-object v0, Lgov/nist/javax/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/header/ContentType;

    return-object p0
.end method

.method public getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 0

    .line 913
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 884
    iget-object p0, p0, Lgov/nist/javax/sip/message/SIPMessage;->callIdHeader:Lgov/nist/javax/sip/header/CallID;

    if-eqz p0, :cond_0

    .line 888
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    .line 885
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid message! Cannot compute hashcode! call-id header is missing !"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isNullRequest()Z
    .locals 0

    .line 1877
    iget-boolean p0, p0, Lgov/nist/javax/sip/message/SIPMessage;->nullRequest:Z

    return p0
.end method
