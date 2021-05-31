FROM nhthai2005/ubuntu:OpenVPN
WORKDIR /root
COPY ./start_services.sh .
RUN chmod +x ./start_services.sh
EXPOSE 139 145 1194
VOLUME ["./data"]
ENTRYPOINT ["./start_services.sh"] 
CMD [ "/sbin/init" ]
